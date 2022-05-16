AddCSLuaFile()

local function doSuppressorStats(self)
    self.Primary.Sound = Sound("MW19_GLOCK.Fire_S")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_Pistol_Mag_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {
    ["Slide"] = {
        Slot = 2,
        {
            Key = "attachment_vm_pi_papa320_slide"
        },
        {
            Key = "attachment_vm_pi_papa320_slide_black",
            Stats = function(self)  
            end
        },
        {
            Key = "attachment_vm_pi_papa320_slide_vented",
            Stats = function(self)
            end
        },       
        {
            Key = "attachment_vm_pi_papa320_barrel_ext",
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
            Key = "attachment_vm_laser_pstl",
              Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_laser_pstl03",
            Stats = function(self)
            end
        },       
        {
            Key = "attachment_vm_laser_pstl04",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_laser_pstl_shoothouse",
            Stats = function(self)
            end
        }
    },

    ["Optic"] = {
        Slot = 5,
        {
            Key = "no_sight",
        },
        {
            Key = "attachment_vm_minireddot01",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.4)
            end
        },
        {
            Key = "attachment_vm_minireddot02",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
            end
        },      
        {
            Key = "attachment_vm_minireddot03",
            Stats = function(self)
                self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
            end
        },  
    },

    ["Muzzle"] = {
        Slot = 4,
        {
            Key = "no_muzzle"
        },
        {
            Key = "attachment_vm_flashhider_psl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
            end 
        },              
        {
            Key = "attachment_vm_muzzlebrake_pstl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },        
        {
            Key = "attachment_vm_compensator_pstl01",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
            end 
        },     
        {
            Key = "attachment_vm_oil_filter_suppressor",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },     
           
        {
            Key = "attachment_vm_silencer_pstl_02",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },        
        {
            Key = "attachment_vm_silencerpstl03",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
                    }
                }
            },
            Stats = function(self)
                doSuppressorStats(self)
            end 
        },
        {
            Key = "attachment_vm_silencerpstl",
            VElement = {
                Bone = "tag_silencer",
                Position = Vector(0, 0, 0),
                Angles = Angle(),
                Offsets = { 
                    ["Slide"] = {
                        [2] = {Vector(0, 0, 0), Angle()},
                        [3] = {Vector(0, 0.45, 0), Angle()},
                        [4] = {Vector(0, 0.45, 0), Angle()}
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
    
    ["Magazine"] = {
        Slot = 3,
        {
            Key = "attachment_vm_pi_papa320_mag",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_pi_papa320_mag_ext",
            Stats = function(self)
            end
        },
        {
            Key = "attachment_vm_pi_papa320_mag_ext2",
            Stats = function(self)
            end
        }
    }
}

