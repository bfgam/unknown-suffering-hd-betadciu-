function onUpdate(elapsed)    
health = getProperty('health')
    if getProperty('health') > 0.05 then
       setProperty('health', health- 0.04);
    end
end
