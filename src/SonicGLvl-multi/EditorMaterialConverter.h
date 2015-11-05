#pragma once

#include "LibGens.h"
#include "Material.h"
#include "Texture.h"

namespace LibGens {
	class ShaderLibrary;
	class ShaderParams;
}

class EditorMaterialConverter {
protected:
public:
	EditorMaterialConverter();
	static Ogre::Material *convertMaterial(LibGens::Material *material, LibGens::ShaderLibrary *shader_library);
	static void updateMaterialShaderParameters(LibGens::ShaderLibrary *shader_library, Ogre::Material *ogre_material, LibGens::Material *material, bool no_gi);
	static void setShaderParameters(Ogre::Pass *pass, Ogre::GpuProgramParametersSharedPtr program_params, LibGens::Material *material, LibGens::ShaderParams *shader_params);
};