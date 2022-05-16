AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("mw19.scharlie.fire.s")
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

SWEP.Customization = {
    ["Barrel"] = {
        Slot = 2,
        {
            Key = "attachment_vm_ar_scharlie_barrel",
        },
        {
            Key = "attachment_vm_ar_scharlie_barrel_long",
            Bodygroups = {
                ["tag_frontsight"] = 2
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_barrel_mid",
            Bodygroups = {
                ["tag_frontsight"] = 4
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_barrel_pdw",
            Bodygroups = {
                ["tag_frontsight"] = 6
            },
            Stats = function(self)
            end
        }
    },

    ["Laser"] = {
        Slot = 6,
        {
            Key = "no_laser",
        },
        {
            Key = "attachment_vm_laser01",
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 3, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, -4, 0), Angle()}
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
                        [2] = {Vector(0, 3, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, -4, 0), Angle()}
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
                        [2] = {Vector(0, 3, 0), Angle()},
                        [3] = {Vector(0, 3, 0), Angle()},
                        [4] = {Vector(0, -4, 0), Angle()}
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
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.35)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.43)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.4)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.25)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.015, -2, 0.37)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0,0,0)
            end
        }, 
        {
            Key = "attachment_vm_reflex_east02_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.08)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.15)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.23)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.15)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.23)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.115, 0, 0.04)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.065)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Bodygroups = {
                ["tag_backsight"] = 1,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.00, 0, 0.043)
            end
        },
        {
            Key = "attachment_vm_thermal_east_tall",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.107)
            end
        }, 
        {
            Key = "attachment_vm_thermal_hybrid",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.53)
                self.HybridAimAngles = Angle(-0.45, -1, -45)
                self.HybridAimPos = Vector(-1.9, 0, 1.05)
            end
        }, 
        {
            Key = "attachment_vm_thermal_west_01",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.55)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, 0, 0.16)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.23)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0.4)
                self.HybridAimAngles = Angle(-0.55, 0, 0)
                self.HybridAimPos = Vector(0,0,-0.85)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west02",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.016, 0, 0.135)
                self.HybridAimAngles = Angle(0, 0, 0)
                self.HybridAimPos = Vector(0, 0, 0.15)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        },
        {
            Key = "attachment_vm_hybrid_west02_thermal",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.016, 0, 0.135)
                self.HybridAimAngles = Angle(0, 0, 0)
                self.HybridAimPos = Vector(0, 0, 0.15)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        },   
        {
            Key = "attachment_vm_hybrid_west03",
            Bodygroups = {
                ["tag_backsight"] = 2,
                ["tag_frontsight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, 0, 0.465)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(-0.15, -1, -45)
                self.HybridAimPos = Vector(-1.65, 0, 1.35)
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
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider03",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },               
        {
            Key = "attachment_vm_flashhider05",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },                          
        {
            Key = "attachment_vm_muzzlebrake01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake03",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake04",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_compensator01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_compensator02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },      
        {
            Key = "attachment_vm_muzzlemelee01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_muzzlemelee02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },      
        {
            Key = "attachment_vm_silencer_east01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },        
        {
            Key = "attachment_vm_silencer02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
        {
            Key = "attachment_vm_silencer03",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
        {
            Key = "attachment_vm_silencer04",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [2] = {Vector(0, 0.5, 0), Angle()},
                        [3] = {Vector(0, -0.1, 0), Angle()},
                        [4] = {Vector(0, -6.75, 0), Angle()}
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
            Key = "attachment_vm_ar_scharlie_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_stock_dmr",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_stock_light",
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
        }
    },

    ["Underbarrel"] = {
        Slot = 8,
        {
            Key = "no_underbarrel",
        },
        {
            Key = "attachment_vm_angledgrip_lod0",
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")
            end
        },
        {
            Key = "attachment_vm_angledgrip04",
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip02_lod0",
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip03",
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby02",
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby01",
            Stats = function(self)
                local bHasLaser = self:HasAttachment("attachment_vm_laser01")
                    || self:HasAttachment("attachment_vm_laser02")
                    || self:HasAttachment("attachment_vm_laser03")

                self:SetGripPoseParameter(bHasLaser && "grip_vert_offset" || "grip_vert_pro_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby04",
            Stats = function(self)
                local bHasLaser = self:HasAttachment("attachment_vm_laser01")
                    || self:HasAttachment("attachment_vm_laser02")
                    || self:HasAttachment("attachment_vm_laser03")

                self:SetGripPoseParameter(bHasLaser && "grip_vert_offset" || "grip_vert_pro_offset")
            end
        },
    },
    
    ["Magazine"] = {
        Slot = 5,
        {
            Key = "attachment_vm_ar_scharlie_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_mmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_scharlie_xmags",
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