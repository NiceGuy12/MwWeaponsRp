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
            Key = "attachment_vm_ar_asierra12_barrel",
        },
        {
            Key = "attachment_vm_ar_asierra12_barshort",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_barlong",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_barlong2",
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
                self.LaserAimPos = Vector(-2, 0, 0)
            end
        },
        {
            Key = "attachment_vm_laser02",
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
                self.LaserAimPos = Vector(-2, 0, 0)
            end
        },       
        {
            Key = "attachment_vm_laser03",
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
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.97)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.02, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.9)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.92)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 2, -1.05)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.015, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east02_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.25)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.19)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.09)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.2)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.05, 0.03, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.951)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.04, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.02, 0, -1.1)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.03, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.12, 0, -1.281)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0026, 0, -1.385)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.004, 0, -1.278)
            end
        },
        {
            Key = "attachment_vm_thermal_east_tall",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.009, 0, -1.213)
            end
        }, 
        {
            Key = "attachment_vm_thermal_hybrid",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.009, 0, -0.7862)
                self.HybridAimAngles = Angle(-0.06, 0.03, -45)
                self.HybridAimPos = Vector(-1.78, 0, -0.32) 
            end
        }, 
        {
            Key = "attachment_vm_thermal_west_01",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.006, 0, -0.77)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_rail"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.033, 1.5, 0.71)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_rail"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.028, 1.5, 0.78)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_ar_asierra12_scope",
            Bodygroups = {
                ["tag_rail"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(-0.028, 1.5, 0.49)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.007, 0, -0.924)
                self.HybridAimAngles = Angle(0, 0.02, 0)
                self.HybridAimPos = Vector(0,0,-2.15)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west03",
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.004, 0, -0.854)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(-0.02, 0.03, -45)
                self.HybridAimPos = Vector(-1.55, 0, -0.05) 
            end
        }, 
    },

    ["Muzzle"] = {
        Slot = 3,
        {
            Key = "attachment_vm_ar_asierra12_muzzlebrake",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, -10, 0), Angle()},
                        [2] = {Vector(0, -11.15, 0), Angle()},
                        [3] = {Vector(0, -7.5, 0), Angle()},
                        [4] = {Vector(0, -5.5, 0), Angle()}
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
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },        
        {
            Key = "attachment_vm_ar_asierra12_longsuppressor",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 0, 0), Angle()},
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
                        [2] = {Vector(0, -1.5, 0), Angle()},
                        [3] = {Vector(0, 1.5, 0), Angle()},
                        [4] = {Vector(0, 4.5, 0), Angle()}
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
            Key = "attachment_vm_ar_asierra12_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_stockh",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_stockl",
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
            Key = "attachment_vm_ar_asierra12_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_xmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_asierra12_xxmags",
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