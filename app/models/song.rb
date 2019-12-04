class Song < ApplicationRecord

    def prepare_for_json
        @output = {
            data: {title: title, writers: writers},
            structure: [],
            sections: {},
            favourite: !!favourite
        }
        @current_section =  nil
        startConvert
        @output
    end

    def startConvert
        fullText.split("\n").each do |line|
            if line.include?("verse") || line.include?("chorus") || line.include?("intro")
                @current_section = line.chomp
                @output[:structure] << @current_section
                @output[:sections][@current_section.to_sym] = []
            else
                parseLine(line)
            end
        end 
    end

    def parseLine(line)
        changes = line.split("(")
        obj_line = []
        changes.each_with_index do |change, i|
            if change.split(")").length >= 2
                parts = change.split(")")
                obj_line << {type: "chord", body: parts[0].chomp}
                parts[1]+="-" if parts[1][-1] != " " && i != changes.length - 1
                obj_line << {type: "lyric", body: parts[1].chomp}
            elsif !change.empty?
                change+="-" if change[-1] != " " && i != changes.length - 1
                obj_line << {type: "lyric", body: change.chomp}
            end 
        end
        @output[:sections][@current_section.to_sym] << obj_line
    end 

end
