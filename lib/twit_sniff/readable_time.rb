module ReadableTime
  def self.relative to
    a = (Time.now-to).to_i

    case a
      when 0 then 'Just now'
      when 1 then 'A sec ago'
      when 2..59 then a.to_s+' secs ago'
      when 60..119 then 'A min ago' #120 = 2 minutes
      when 120..3540 then (a/60).to_i.to_s+' mins ago'
      when 3541..7100 then 'An hour ago' # 3600 = 1 hour
      when 7101..82800 then ((a+99)/3600).to_i.to_s+' hours ago'
      when 82801..172000 then 'A day ago' # 86400 = 1 day
      when 172001..518400 then ((a+800)/(60*60*24)).to_i.to_s+' days ago'
      when 518400..1036800 then 'A week ago'
      else ((a+180000)/(60*60*24*7)).to_i.to_s+' weeks ago'
    end
  end
end