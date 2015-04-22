local OpcodeChecks = {
	MOVE = function(f, i) 
	end,
    
	LOADK = function(f, i)
	end,
    
    LOADKX = function(f, i, i2)
    end,
    
	LOADBOOL = function(f, i)
	end,
	
    LOADNIL = function(f, i)
    end,
    
    GETUPVAL = function(f, i)
    end,
    
    GETTABUP = function(f, i)
    end,
    
    SETTABUP = function(f, i)
    end,
    
    SETUPVAL = function(f, i)
    end,
    
    GETTABLE = function(f, i)
    end,
    
    SETTABLE = function(f, i)
    end,
    
    ADD = function(f, i)
    end,
    
    SUB = function(f, i)
    end,
    
    MUL = function(f, i)
    end,
    
    DIV = function(f, i)
    end,
    
    MOD = function(f, i)
    end,
    
    POW = function(f, i)
    end,
    
    UNM = function(f, i)
    end,
    
    NOT = function(f, i)
    end,
    
    LEN = function(f, i)
    end,
    
    CONCAT = function(f, i)
    end,
    
    JMP = function(f, i, i2)
    end,
    
    CALL = function(f, i)
    end,
    
    RETURN = function(f, i)
    end,
    
    TAILCALL = function(f, i)
    end,
    
    VARARG = function(f, i)
    end,
    
    SELF = function(f, i)
    end,
    
    EQ = function(f, i)
    end,
    
    LT = function(f, i)
    end,
    
    LE = function(f, i)
    end,
    
    TEST = function(f, i)
    end,
    
    TESTSET = function(f, i)
    end,
    
    FORPREP = function(f, i)
    end,
    
    FORLOOP = function(f, i)
    end,
    
    TFORLOOP = function(f, i)
    end,
    
    NEWTABLE = function(f, i)
    end,
    
    SETLIST = function(f, i)
    end,
    
    CLOSURE = function(f, i)
    end,
    
    EXTRAARG = function(f, i, i2)
    end,
    -- TODO
    -- TFORCALL
}
setmetatable(OpcodeChecks, {
    __index = function(t, k)
        return function() end 
    end
})

--function VerifyChunk(chunk)
return function(chunk)
    assert(chunk.MaxStackSize <= 255, "Invalid MaxStackSize " .. chunk.MaxStackSize .. ". It must be <=255")
    for i = 1, chunk.Instructions.Count do
        local instr = chunk.Instructions[i - 1]
        local func = OpcodeChecks[instr.Opcode:upper()]
        func(chunk, instr, i - 1)
    end
end
