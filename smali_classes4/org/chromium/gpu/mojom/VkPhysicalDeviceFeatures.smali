.class public final Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alphaToOne:Z

.field public depthBiasClamp:Z

.field public depthBounds:Z

.field public depthClamp:Z

.field public drawIndirectFirstInstance:Z

.field public dualSrcBlend:Z

.field public fillModeNonSolid:Z

.field public fragmentStoresAndAtomics:Z

.field public fullDrawIndexUint32:Z

.field public geometryShader:Z

.field public imageCubeArray:Z

.field public independentBlend:Z

.field public inheritedQueries:Z

.field public largePoints:Z

.field public logicOp:Z

.field public multiDrawIndirect:Z

.field public multiViewport:Z

.field public occlusionQueryPrecise:Z

.field public pipelineStatisticsQuery:Z

.field public robustBufferAccess:Z

.field public sampleRateShading:Z

.field public samplerAnisotropy:Z

.field public shaderClipDistance:Z

.field public shaderCullDistance:Z

.field public shaderFloat64:Z

.field public shaderImageGatherExtended:Z

.field public shaderInt16:Z

.field public shaderInt64:Z

.field public shaderResourceMinLod:Z

.field public shaderResourceResidency:Z

.field public shaderSampledImageArrayDynamicIndexing:Z

.field public shaderStorageBufferArrayDynamicIndexing:Z

.field public shaderStorageImageArrayDynamicIndexing:Z

.field public shaderStorageImageExtendedFormats:Z

.field public shaderStorageImageMultisample:Z

.field public shaderStorageImageReadWithoutFormat:Z

.field public shaderStorageImageWriteWithoutFormat:Z

.field public shaderTessellationAndGeometryPointSize:Z

.field public shaderUniformBufferArrayDynamicIndexing:Z

.field public sparseBinding:Z

.field public sparseResidency16Samples:Z

.field public sparseResidency2Samples:Z

.field public sparseResidency4Samples:Z

.field public sparseResidency8Samples:Z

.field public sparseResidencyAliased:Z

.field public sparseResidencyBuffer:Z

.field public sparseResidencyImage2D:Z

.field public sparseResidencyImage3D:Z

.field public tessellationShader:Z

.field public textureCompressionAstcLdr:Z

.field public textureCompressionBc:Z

.field public textureCompressionEtc2:Z

.field public variableMultisampleRate:Z

.field public vertexPipelineStoresAndAtomics:Z

.field public wideLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;

    invoke-direct {v1, v0}, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;-><init>(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->robustBufferAccess:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fullDrawIndexUint32:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->imageCubeArray:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->independentBlend:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->geometryShader:Z

    const/4 v7, 0x5

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->tessellationShader:Z

    const/4 v8, 0x6

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v9

    iput-boolean v9, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sampleRateShading:Z

    const/4 v9, 0x7

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->dualSrcBlend:Z

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->logicOp:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->multiDrawIndirect:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->drawIndirectFirstInstance:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthClamp:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthBiasClamp:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fillModeNonSolid:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthBounds:Z

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->wideLines:Z

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->largePoints:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->alphaToOne:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->multiViewport:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->samplerAnisotropy:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionEtc2:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionAstcLdr:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionBc:Z

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->occlusionQueryPrecise:Z

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->pipelineStatisticsQuery:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->vertexPipelineStoresAndAtomics:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fragmentStoresAndAtomics:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderTessellationAndGeometryPointSize:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderImageGatherExtended:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageExtendedFormats:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageMultisample:Z

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageReadWithoutFormat:Z

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageWriteWithoutFormat:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderUniformBufferArrayDynamicIndexing:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderSampledImageArrayDynamicIndexing:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageBufferArrayDynamicIndexing:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageArrayDynamicIndexing:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderClipDistance:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderCullDistance:Z

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderFloat64:Z

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderInt64:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderInt16:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderResourceResidency:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderResourceMinLod:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseBinding:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyBuffer:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v10

    iput-boolean v10, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyImage2D:Z

    invoke-virtual {p0, v2, v9}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyImage3D:Z

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency2Samples:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency4Samples:Z

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency8Samples:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency16Samples:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyAliased:Z

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->variableMultisampleRate:Z

    invoke-virtual {p0, v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->inheritedQueries:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->robustBufferAccess:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fullDrawIndexUint32:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->imageCubeArray:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->independentBlend:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->geometryShader:Z

    const/4 v6, 0x4

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->tessellationShader:Z

    const/4 v7, 0x5

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sampleRateShading:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->dualSrcBlend:Z

    const/4 v9, 0x7

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->logicOp:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->multiDrawIndirect:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->drawIndirectFirstInstance:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthClamp:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthBiasClamp:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fillModeNonSolid:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->depthBounds:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->wideLines:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->largePoints:Z

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->alphaToOne:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->multiViewport:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->samplerAnisotropy:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionEtc2:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionAstcLdr:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->textureCompressionBc:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->occlusionQueryPrecise:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->pipelineStatisticsQuery:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->vertexPipelineStoresAndAtomics:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->fragmentStoresAndAtomics:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderTessellationAndGeometryPointSize:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderImageGatherExtended:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageExtendedFormats:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageMultisample:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageReadWithoutFormat:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageWriteWithoutFormat:Z

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderUniformBufferArrayDynamicIndexing:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderSampledImageArrayDynamicIndexing:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageBufferArrayDynamicIndexing:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderStorageImageArrayDynamicIndexing:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderClipDistance:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderCullDistance:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderFloat64:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderInt64:Z

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderInt16:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderResourceResidency:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->shaderResourceMinLod:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseBinding:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyBuffer:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyImage2D:Z

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyImage3D:Z

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency2Samples:Z

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency4Samples:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency8Samples:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidency16Samples:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->sparseResidencyAliased:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->variableMultisampleRate:Z

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->inheritedQueries:Z

    invoke-virtual {p1, p0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
