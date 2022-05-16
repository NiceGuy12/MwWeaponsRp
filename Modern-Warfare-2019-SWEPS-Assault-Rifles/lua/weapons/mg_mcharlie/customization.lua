AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("mw19_mcharlie.fire.s")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_AR_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_AR_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

local function doCalConversionStats(self)
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")
    local bSup5 = self:HasAttachment("attachment_vm_ar_mcharlie_suppressorbarrel")
    local bSup6 = self:HasAttachment("attachment_vm_ar_mcharlie_magsub")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4 && !bSup5 && !bSup6) then
    self.Primary.Sound = Sound("mw19_mcharlie.fire.cal")
    end
end


SWEP.Customization = {
    ["Barrel"] = {
        Slot = 2,
        {
            Key = "attachment_vm_ar_mcharlie_barrel",
        },
        {
            Key = "attachment_vm_ar_mcharlie_shortbarrel",
            Bodygroups = {
                ["tag_sight_barrel"] = 4,
                ["tag_tip"] = 4
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_barshort_offset")
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_longbarrel",
            Bodygroups = {
                ["tag_sight_barrel"] = 2,
                ["tag_tip"] = 2
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_suppressorbarrel",
            Bodygroups = {
                ["tag_tip"] = 3
            },
            ExcludedAttachments = {
                ["Muzzle"] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}
            },
            Stats = function(self)
                doSuppressorStats(self)
            end
        }
    },

    ["Laser"] = {
        Slot = 6,
        {
            Key = "no_laser"
        },
        {
            Key = "attachment_vm_laser01",
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -4, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.LaserAimAngles = Angle(-0.3, 0.2, -45)
                self.LaserAimPos = Vector(-2, 0, 0)
            end
        },
        {
            Key = "attachment_vm_laser02",
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -4, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.LaserAimAngles = Angle(-0.4, 0.265, -45)
                self.LaserAimPos = Vector(-2, 0, 0)
            end
        },       
        {
            Key = "attachment_vm_laser03",
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -4, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.LaserAimAngles = Angle(-0.3, 0.2, -45)
                self.LaserAimPos = Vector(-2, 0, 0)
            end
        }
    },

    ["Optic"] = {
        Slot = 4,
        {
            Key = "no_sight",
        },
        {
            Key = "attachment_vm_minireddot_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.05)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.02, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.01, 0.02, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.12)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.035, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.034, 0.018, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.015, 0, 0.04)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.034, 0.018, 0)
            end
        }, 
        {
            Key = "attachment_vm_reflex_east02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.23)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.05, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.2)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.013, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.17)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.09)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.01, 0.017, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.11, 0, -0.288)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.007, 0, -0.392)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.006, 0, -0.284)
            end
        },
        {
            Key = "attachment_vm_thermal_east_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            VElement = {
                Bone = "tag_reflex",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.002, -2, -0.222)
            end
        }, 
        {
            Key = "attachment_vm_thermal_hybrid",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            VElement = {
                Bone = "tag_reflex",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.00, 0, 0.207)
                self.HybridAimAngles = Angle(-0.02, 0.02, -45)
                self.HybridAimPos = Vector(-1.75, 0, 0.7)
            end
        }, 
        {
            Key = "attachment_vm_thermal_west_01",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            VElement = {
                Bone = "tag_reflex",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, -1.5, 0.223)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.008, 3, -0.165)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, 3, -0.096)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            VElement = {
                Bone = "tag_reflex",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.003, -1, 0.07)
                self.HybridAimAngles = Angle(-0.02, 0.02, 0)
                self.HybridAimPos = Vector(0,0,-1.14)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west02",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.022, -2, -0.1973)
                self.HybridAimAngles = Angle(-0.02, 0.03, 0)
                self.HybridAimPos = Vector(0, 0, -0.2)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        },
        {
            Key = "attachment_vm_hybrid_west02_thermal",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.022, -2, -0.1973)
                self.HybridAimAngles = Angle(-0.02, 0.03, 0)
                self.HybridAimPos = Vector(0, 0, -0.2)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west03",
            Bodygroups = {
                ["tag_sight"] = 1,
                ["tag_sight_barrel"] = 1
            },
            VElement = {
                Bone = "tag_reflex",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, -1, 0.14)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(0, 0.015, -45)
                self.HybridAimPos = Vector(-1.55, 0, 0.97)
            end
        }, 
    },

    ["Muzzle"] = {
        Slot = 3,
        {
            Key = "no_muzzle"
        },
        {
            Key = "attachment_vm_flashhider01",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider02",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider03",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider05",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },                          
        {
            Key = "attachment_vm_muzzlebrake01",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake02",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake03",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake04",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_compensator01",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_compensator02",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },      
        {
            Key = "attachment_vm_muzzlemelee01",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_muzzlemelee02",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },      
        {
            Key = "attachment_vm_silencer_east01",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },        
        {
            Key = "attachment_vm_silencer02",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
        {
            Key = "attachment_vm_silencer03",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
        {
            Key = "attachment_vm_silencer04",
            Bodygroups = {
                ["tag_tip"] = 1
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3.8, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
    },

    ["Perk"] = {
        Slot = 1,
        {
            Key = "no_perk",
        },
        {
            Key = "perk_soh",
            Stats = function(self)
                self.Animations.Reload = self.Animations.Reload_Fast
                self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
                self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
                self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
                self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
                self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
            end
        },
        {
            Key = "perk_fastmelee",
            Stats = function(self)
            end
        },
        {
            Key = "perk_heavymelee",
            Stats = function(self)
            end
        },
        {
            Key = "perk_fmj",
            Stats = function(self)
            end
        }
    },

    ["Stock"] = {
        Slot = 7,
        {
            Key = "attachment_vm_ar_mcharlie_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_lightstock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_stock_light01",
            Bodygroups = {
                ["stock_adapter"] = 1
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_stock_medium01",
            Bodygroups = {
                ["stock_adapter"] = 1
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_stock_v2",
            Bodygroups = {
                ["stock_adapter"] = 0
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_stock_no",
            Bodygroups = {
                ["stock_adapter"] = 1
            },
            Stats = function(self)
                self.Recoil.AdsMultiplier = 0.5
                self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 1.26
                self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 1.26
                self.Animations.Draw.Fps = self.Animations.Draw.Fps * 1.26
                self.Animations.Holster.Fps = self.Animations.Holster.Fps * 1.26
            end
        }
    },

    ["Underbarrel"] = {
        Slot = 8,
        {
            Key = "no_underbarrel",
        },
        {
            Key = "attachment_vm_angledgrip_lod0",
            VElement = {
                Bone = "tag_grip_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -2.3, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripang_offset")
            end
        },
        {
            Key = "attachment_vm_angledgrip04",
            VElement = {
                Bone = "tag_grip_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, -3, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripang_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip02_lod0",
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripvert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip03",
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripvert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby02",
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripvert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby01",
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripvertpro_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby04",
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_gripvertpro_offset")
            end
        },
    },
    
    ["Magazine"] = {
        Slot = 5,
        {
            Key = "attachment_vm_ar_mcharlie_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_xmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_magsub",
            Stats = function(self)
                doCalConversionStats(self)
            end
        },
        {
            Key = "attachment_vm_ar_mcharlie_xmags2",
            Stats = function(self)
            end
        }
    },

--     ["Camo"] = {
--         Slot = 9,
--         {
--             Key = "no_camo",
--         },
--         {
--             Key = "camo_jermasus",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "camo_digital",
--             Stats = function(self)
--             end
--         }
--     },
}