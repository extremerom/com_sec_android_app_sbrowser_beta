.class public final Lorg/chromium/autofill/mojom/PasswordFormFillData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public additionalLogins:[Lorg/chromium/autofill/mojom/PasswordAndMetadata;

.field public formRendererId:Lorg/chromium/autofill/mojom/FormRendererId;

.field public notifyBrowserOfSuccessfulFilling:Z

.field public passwordAutofillTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/mojo_base/mojom/String16;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public passwordElementRendererId:Lorg/chromium/autofill/mojom/FieldRendererId;

.field public preferredLogin:Lorg/chromium/autofill/mojom/PasswordAndMetadata;

.field public suggestionBannedFields:[Lorg/chromium/autofill/mojom/FieldRendererId;

.field public url:Lorg/chromium/url/mojom/Url;

.field public usernameElementRendererId:Lorg/chromium/autofill/mojom/FieldRendererId;

.field public usernameMayUsePrefilledPlaceholder:Z

.field public waitForUsername:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 14

    sget-object v0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->formRendererId:Lorg/chromium/autofill/mojom/FormRendererId;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->url:Lorg/chromium/url/mojom/Url;

    const/16 v10, 0x10

    invoke-virtual {p1, v0, v10, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->usernameElementRendererId:Lorg/chromium/autofill/mojom/FieldRendererId;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->passwordElementRendererId:Lorg/chromium/autofill/mojom/FieldRendererId;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->usernameMayUsePrefilledPlaceholder:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->waitForUsername:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->notifyBrowserOfSuccessfulFilling:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->preferredLogin:Lorg/chromium/autofill/mojom/PasswordAndMetadata;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->additionalLogins:[Lorg/chromium/autofill/mojom/PasswordAndMetadata;

    const/16 v1, 0x38

    const/4 v11, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_0
    iget-object v3, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->additionalLogins:[Lorg/chromium/autofill/mojom/PasswordAndMetadata;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v8

    invoke-virtual {v0, v3, v4, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->suggestionBannedFields:[Lorg/chromium/autofill/mojom/FieldRendererId;

    const/16 v1, 0x40

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_2
    iget-object v3, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->suggestionBannedFields:[Lorg/chromium/autofill/mojom/FieldRendererId;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v8

    invoke-virtual {v0, v3, v4, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->passwordAutofillTypes:Ljava/util/Map;

    const/16 v1, 0x48

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_6

    :cond_4
    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->passwordAutofillTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v12, v0, [Lorg/chromium/mojo_base/mojom/String16;

    new-array v13, v0, [I

    iget-object p0, p0, Lorg/chromium/autofill/mojom/PasswordFormFillData;->passwordAutofillTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v9

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v4, v12, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v13, v1

    add-int/2addr v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0, v8, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move v6, v9

    :goto_5
    if-ge v6, v0, :cond_6

    aget-object v4, v12, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v13, v10, v9, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    :goto_6
    return-void
.end method
