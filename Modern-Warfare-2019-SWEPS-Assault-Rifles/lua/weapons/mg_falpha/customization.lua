AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("mw19.falpha.fire.s")
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
            Key = "attachment_vm_ar_falpha_barrel",
        },
        {
            Key = "attachment_vm_ar_falpha_barlong2",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_barshort",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_barrellong_alt",
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
            Key = "attachment_vm_laser_cylinder01",
            Bodygroups = {
                ["tag_laser_mount"] = 1,
            },
             VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0,0,0),
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
                self.LaserAimAngles = Angle(-0.3, 0.05, -45)
                self.LaserAimPos = Vector(-3.5, 0, 1.5)
            end
        },
        {
            Key = "attachment_vm_laser_cylinder02",
            Bodygroups = {
                ["tag_laser_mount"] = 1,
            },
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0,0,0),
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
                self.LaserAimAngles = Angle(-0.2, 0.07, -45)
                self.LaserAimPos = Vector(-3.5, 0, 1.5)
            end
        },       
        {
            Key = "attachment_vm_laser_cylinder03",
            Bodygroups = {
                ["tag_laser_mount"] = 1,
            },
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0,0,0),
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
                self.LaserAimAngles = Angle(-0.3, 0.03, -45)
                self.LaserAimPos = Vector(-3.5, 0, 1.5)
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
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.145)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.105)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.01, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.105)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 1, -0.275)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.04, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.45)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.4)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 0, -0.31)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.04, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.015, 1, -0.455)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.09, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.129)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.02, 1, -0.27)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.012, 0.03, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.126, 2.5, -0.4575)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.009, 1, -0.561)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 2, -0.453)
            end
        },
        {
            Key = "attachment_vm_thermal_east_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0158, 2, -0.391)
            end
        }, 
        {
            Key = "attachment_vm_thermal_hybrid",
            Bodygroups = {
                ["tag_sight"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.015, 2, 0.0381)
                self.HybridAimAngles = Angle(-0.05, 0.02, -45)
                self.HybridAimPos = Vector(-1.78, 0, 0.5)
            end
        }, 
        {
            Key = "attachment_vm_thermal_west_01",
            Bodygroups = {
                ["tag_sight"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.012, 2, 0.0535)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.009, 3, -0.326)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.012, 3, -0.26)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west",
            Bodygroups = {
                ["tag_sight"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.013, 1.5, -0.1) 
                self.HybridAimAngles = Angle(-0.02, 0.025, 0)
                self.HybridAimPos = Vector(0,0,-1.3)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west02",
            Bodygroups = {
                ["tag_sight"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, 0, -0.368)
                self.HybridAimAngles = Angle(-0.02, 0.03, 0)
                self.HybridAimPos = Vector(0, 0, -0.36)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        },        
        {
            Key = "attachment_vm_hybrid_west02_thermal",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.005, 0, -0.368)
                self.HybridAimAngles = Angle(-0.02, 0.03, 0)
                self.HybridAimPos = Vector(0, 0, -0.36)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        },     
        {
            Key = "attachment_vm_hybrid_west03",
            Bodygroups = {
                ["tag_sight"] = 1
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0114, 2.5, -0.031)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(-0.02, 0.03, -45)
                self.HybridAimPos = Vector(-1.58, 0, 0.75)
            end
        }, 
    },
    ["Muzzle"] = {
        Slot = 3,
        {
            Key = "attachment_vm_ar_falpha_barrel_muzzle",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, -10.5, 0), Angle()},
                        [2] = {Vector(0, -10.5, 0), Angle()},
                        [3] = {Vector(0, -11.5, 0), Angle()},
                        [4] = {Vector(0, -6.5, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },    
        {
            Key = "attachment_vm_flashhider01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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
                        [3] = {Vector(0, -2.25, 0), Angle()},
                        [4] = {Vector(0, 3, 0), Angle()}
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

    ["Underbarrel"] = {
        Slot = 7,
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
                        [5] = {Vector(0, -1.5, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")
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
                        [5] = {Vector(0, -2, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")
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
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
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
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
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
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
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
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
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
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
            end
        },
    },
    
    ["Magazine"] = {
        Slot = 5,
        {
            Key = "attachment_vm_ar_falpha_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_xmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_xmags2",
            Stats = function(self)
            end
        }
    },
    
    ["Stock"] = {
        Slot = 8,
        {
            Key = "attachment_vm_ar_falpha_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_stock_light",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_stock_stable",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falpha_stock_tactical_v1",
            Stats = function(self)
            end
        }
    },

    -- ["Camo"] = {
    --     Slot = 9,
    --     {
    --         Key = "no_camo",
    --     },
    --     {
    --         Key = "camo_jermasus",
    --         Stats = function(self)
    --         end
    --     },
    --     {
    --         Key = "camo_digital",
    --         Stats = function(self)
    --         end
    --     }
    -- },
}