.class public final Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public extensions:[Lorg/chromium/gpu/mojom/VkExtensionProperties;

.field public featureProtectedMemory:Z

.field public featureSamplerYcbcrConversion:Z

.field public features:Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;

.field public properties:Lorg/chromium/gpu/mojom/VkPhysicalDeviceProperties;

.field public queueFamilies:[Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;

    invoke-direct {v1, v0}, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gpu/mojom/VkPhysicalDeviceProperties;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VkPhysicalDeviceProperties;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->properties:Lorg/chromium/gpu/mojom/VkPhysicalDeviceProperties;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/gpu/mojom/VkExtensionProperties;

    iput-object v6, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->extensions:[Lorg/chromium/gpu/mojom/VkExtensionProperties;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->extensions:[Lorg/chromium/gpu/mojom/VkExtensionProperties;

    invoke-static {v7}, Lorg/chromium/gpu/mojom/VkExtensionProperties;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VkExtensionProperties;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->features:Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->featureSamplerYcbcrConversion:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->featureProtectedMemory:Z

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    iput-object v5, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->queueFamilies:[Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    move v5, v2

    :goto_1
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->queueFamilies:[Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    invoke-static {v6}, Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->properties:Lorg/chromium/gpu/mojom/VkPhysicalDeviceProperties;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->extensions:[Lorg/chromium/gpu/mojom/VkExtensionProperties;

    const/4 v3, -0x1

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->extensions:[Lorg/chromium/gpu/mojom/VkExtensionProperties;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->features:Lorg/chromium/gpu/mojom/VkPhysicalDeviceFeatures;

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->featureSamplerYcbcrConversion:Z

    const/16 v4, 0x20

    invoke-virtual {p1, v0, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->featureProtectedMemory:Z

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->queueFamilies:[Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    const/16 v4, 0x28

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/chromium/gpu/mojom/VulkanPhysicalDeviceInfo;->queueFamilies:[Lorg/chromium/gpu/mojom/VkQueueFamilyProperties;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
