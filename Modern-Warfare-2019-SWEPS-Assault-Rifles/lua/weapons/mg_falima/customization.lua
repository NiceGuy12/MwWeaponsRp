AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("mw19.asierra12.fire.suppressed")
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
            Key = "attachment_vm_ar_falima_barrel",
        },
        {
            Key = "attachment_vm_ar_falima_barlong",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falima_barsmg",
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
                self.LaserAimPos = Vector(-2.5, 0, -0.5)
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
                self.LaserAimAngles = Angle(-0.3, 0.05, -45)
                self.LaserAimPos = Vector(-2.5, 0, -0.5)
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
                self.LaserAimAngles = Angle(-0.3, 0.05, -45)
                self.LaserAimPos = Vector(-2.5, 0, -0.5)
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.78)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.01, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.72)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.01, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.72)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -0.9)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.046, 0.014, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.99)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.03, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 1, -0.89)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.02, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 1, -1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.74)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.9)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.012, 0.016, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.126, 0, -1.07)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 0, -1.174)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 0, -1.065)
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.015, 0, -1.0015)
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0145, 0, -0.575)
                self.HybridAimAngles = Angle(-0.05, 0.04, -45)
                self.HybridAimPos = Vector(-1.77, 0, -0.1)
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.012, 0, -0.557)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.007, 3, -0.947)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_sight"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 3, -0.88)
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.013, 0, -0.712)
                self.HybridAimAngles = Angle(-0.02, 0.025, 0)
                self.HybridAimPos = Vector(0,0,-1.95)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west03",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 0, -0.643)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(-0.02, 0.03, -45)
                self.HybridAimPos = Vector(-1.58, 0, 0.15)
            end
        }, 
    },

    ["Muzzle"] = {
        Slot = 3,
        {
            Key = "attachment_vm_ar_falima_barrel_muzzle",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, -4.5, 0), Angle()},
                        [2] = {Vector(0, -3, 0), Angle()},
                        [3] = {Vector(0, -7, 0), Angle()}
                    }
                }
            },
        },
        {
            Key = "attachment_vm_flashhider01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, 1, 0), Angle()},
                        [3] = {Vector(0, -2.75, 0), Angle()}
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
            Key = "attachment_vm_ar_falima_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falima_stockl",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_stock_medium01",
            Bodygroups = {
                ["tag_stock"] = 1,
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_stock_heavy",
            Bodygroups = {
                ["tag_stock"] = 1,
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falima_nostock",
            Bodygroups = {
                ["tag_stock"] = 1,
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
            Key = "attachment_vm_ar_falima_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falima_mmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_falima_xmags",
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