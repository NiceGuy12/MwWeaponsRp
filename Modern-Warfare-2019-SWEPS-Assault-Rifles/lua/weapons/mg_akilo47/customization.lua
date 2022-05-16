AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("mw19.akilo47.fire.suppressed")
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

local function doSmgStats(self)
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4) then
        self.Primary.Sound = Sound("mw19.akilo47.smgcal.fire")
        self.Reverb = {
            RoomScale = 50000,
            Sounds = {
                Outside = {
                    Layer = Sound("Atmo_AR3.Outside"),
                    Reflection = Sound("Reflection_AR.Outside")
                },
        
                Inside = { 
                    Layer = Sound("Atmo_AR.Inside"),
                    Reflection = Sound("Reflection_AR.Inside")
                }
            }
        }
    end

    self.Shell.Scale = 0.7
end

SWEP.Customization = {
    ["Barrel"] = {
        Slot = 2,
        {
            Key = "attachment_vm_ar_akilo47_barrel",
            Bodygroups = {
                ["barrel_handguard"] = 0
            },
        },
        {
            Key = "attachment_vm_ar_akilo47_custombarrel",
            Bodygroups = {
                ["barrel_handguard"] = 4
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_lmgbarrel_grip",
            Bodygroups = {
                ["barrel_handguard"] = 4
            },
            ExcludedAttachments = {
                ["Underbarrel"] = {2,3,4,5,6,7,8}
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_lmgbarrel",
            Bodygroups = {
                ["barrel_handguard"] = 0
            },
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_smgbarrel",
            Bodygroups = {
                ["barrel_handguard"] = 2,
                ["tag_tip"] = 1
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_smg_pose_offset")
            end,
            UsingSmgBarrel = true
        },
        {
            Key = "attachment_vm_ar_akilo47_smgbarcust",
            Bodygroups = {
                ["barrel_handguard"] = 4
            },
            ExcludedAttachments = {
                ["Underbarrel"] = {2,3,4,5,6,7,8}
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_pro_smg_offset")
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
                ["barrel_laser_attach"] = 1
            },
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0.25, 2.3, -0.9),
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
            Key = "attachment_vm_laser_cylinder02",
            Bodygroups = {
                ["barrel_laser_attach"] = 1
            },
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0.25, 2.3, -0.9),
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
            Key = "attachment_vm_laser_cylinder03",
            Bodygroups = {
                ["barrel_laser_attach"] = 1
            },
            VElement = {
                Bone = "tag_laser_attach",
                Position = Vector(0.25, 2.3, -0.9),
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
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.05)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0, 0)
            end
        },
        {
            Key = "attachment_vm_minireddot02_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.05)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0, 0)
            end
        },      
        {
            Key = "attachment_vm_minireddot03_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.05)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west02",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.08)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east02_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.35)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west03",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.3)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_west04",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.22)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_west_lod0",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 3, -1.29)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0, 0)
            end
        },  
        {
            Key = "attachment_vm_holo_east",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -1.082)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.01, 0)
            end
        },  
        {
            Key = "attachment_vm_reflex_east",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.01, 3, -1.23)
                self.ViewModelOffsets.Aim.Angles = self.ViewModelOffsets.Aim.Angles + Angle(-0.015, 0.02, 0)
            end
        }, 
        {
            Key = "attachment_vm_4x_east_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.126, 2, -1.411)
            end
        },        
        {
            Key = "attachment_vm_4x_west_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.008, 2, -1.514)
            end
        },        
        {
            Key = "attachment_vm_4x_west02_tall",
            Bodygroups = {
                ["tag_rail"] = 1
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0084, 2, -1.407)
            end
        },
        {
            Key = "attachment_vm_thermal_east_tall",
            Bodygroups = {
                ["tag_rail"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.0155, 2, -1.345)
            end
        }, 
        {
            Key = "attachment_vm_thermal_hybrid",
            Bodygroups = {
                ["tag_rail"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.016, 2, -0.917)
                self.HybridAimAngles = Angle(-0.05, 0, -45)
                self.HybridAimPos = Vector(-1.8, 2, -0.45)
            end
        }, 
        {
            Key = "attachment_vm_thermal_west_01",
            Bodygroups = {
                ["tag_rail"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.013, 2, -0.902)
            end
        }, 
        {
            Key = "weapon_vm_scope_mike14_alt",
            Bodygroups = {
                ["tag_rail"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.009, 4, -1.287)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_scope_vz",
            Bodygroups = {
                ["tag_rail"] = 1,
            },
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.013, 4, -1.222)
                self.Zoom.Blur.EyeFocusDistance = 3.5
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west",
            Bodygroups = {
                ["tag_rail"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.013, 3, -1.055)
                self.HybridAimAngles = Angle(0, 0.03, 0)
                self.HybridAimPos = Vector(0,0,-2.25)
            end
        }, 
        {
            Key = "attachment_vm_hybrid_west03",
            Bodygroups = {
                ["tag_rail"] = 1,
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
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0.008, 2, -0.985)
                self.Zoom.Blur.EyeFocusDistance = 3.5
                self.HybridAimAngles = Angle(0, 0, -45)
                self.HybridAimPos = Vector(-1.55, 2, -0.15)
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake02",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake03",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_muzzlebrake04",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },         
        {
            Key = "attachment_vm_compensator01",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_compensator02",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },          
        {
            Key = "attachment_vm_muzzlemelee01",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },   
        {
            Key = "attachment_vm_muzzlemelee02",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },      
        {
            Key = "attachment_vm_silencer_east01",
            Bodygroups = {
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
                ["tag_tip"] = 2
            },
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [1] = {Vector(0, 6.5, 0.15), Angle()},
                        [2] = {Vector(0, 6.5, 0.15), Angle()},
                        [3] = {Vector(0, 13, 0.1), Angle()},
                        [4] = {Vector(0, 13, 0), Angle()},
                        [5] = {Vector(0, -1.9, 0), Angle()},
                        [6] = {Vector(0, -0.25, 0), Angle()}
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
            Key = "attachment_vm_ar_akilo47_stock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_lmgstock",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_smgstock_unfolded",
            Bodygroups = {
                ["stock_adapter"] = 1
            },
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
            Key = "attachment_vm_ar_akilo47_smgstock",
            ExcludedAttachments = {
                ["Magazine"] = {4}
            },
            Bodygroups = {
                ["stock_adapter"] = 0
            },
            VElement = {
                Bone = "tag_stock_attach",
                Position = Vector(2.5, 0, 0),
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
                --self:RemoveValue("LaserAimAngles")
                --self:RemoveValue("LaserAimPos")
                --self.ViewModelOffsets.Aim.Pos.y = self.ViewModelOffsets.Aim.Pos.y + 5
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_stockno",
            Bodygroups = {
                ["stock_adapter"] = 1
            },
            Stats = function(self)
                --self:RemoveValue("LaserAimAngles")
                --self:RemoveValue("LaserAimPos")
                --self.ViewModelOffsets.Aim.Pos.y = self.ViewModelOffsets.Aim.Pos.y + 5
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
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_grip_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [5] = {Vector(0, 0, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")

                for name, attachments in pairs(self.Customization) do
                    local att = self.Customization[name][self.Customization[name].m_Index]

                    if (att.UsingSmgBarrel != nil && att.UsingSmgBarrel == true) then
                        self:SetGripPoseParameter("grip_smg_anggrip_offset")
                        break
                    end
                end
            end
        },
        {
            Key = "attachment_vm_angledgrip04",
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_grip_attach",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_ang_offset")

                for name, attachments in pairs(self.Customization) do
                    local att = self.Customization[name][self.Customization[name].m_Index]

                    if (att.UsingSmgBarrel != nil && att.UsingSmgBarrel == true) then
                        self:SetGripPoseParameter("grip_smg_anggrip_offset")
                        break
                    end
                end
            end
        },
        {
            Key = "attachment_vm_vertgrip02_lod0",
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0.1),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_offset")

                for name, attachments in pairs(self.Customization) do
                    local att = self.Customization[name][self.Customization[name].m_Index]

                    if (att.UsingSmgBarrel != nil && att.UsingSmgBarrel == true) then
                        self:SetGripPoseParameter("grip_vert_pro_smg_offset")
                        break
                    end
                end
            end
        },
        {
            Key = "attachment_vm_vertgrip03",
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0.1),
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
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0.1),
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
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0.1),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_pro_offset")
            end
        },
        {
            Key = "attachment_vm_vertgrip_stubby04",
            Bodygroups = {
                ["barrel_handguard"] = 1
            },
            VElement = {
                Bone = "tag_folding_grip",
                Position = Vector(0, 0, 0.1),
                Angles = Angle(),
                Offsets = { 
                    ["Barrel"] = {
                        [5] = {Vector(0, -1, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self:SetGripPoseParameter("grip_vert_pro_offset")
            end
        },
    },
    
    ["Magazine"] = {
        Slot = 5,
        {
            Key = "attachment_vm_ar_akilo47_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_xmags",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_smgmag",
            Stats = function(self)
                doSmgStats(self)
            end
        },
        {
            Key = "attachment_vm_ar_akilo47_drum_mag",
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