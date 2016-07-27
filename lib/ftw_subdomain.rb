class FTWSubdomain
    def self.matches? request
        case request.subdomain
        when 'fearthewave'
            true
        else
            false
        end
    end   
end