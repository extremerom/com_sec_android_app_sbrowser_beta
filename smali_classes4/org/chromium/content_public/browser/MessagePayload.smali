.class public final Lorg/chromium/content_public/browser/MessagePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mArrayBuffer:[B

.field private final mString:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mType:I

    iput-object p1, p0, Lorg/chromium/content_public/browser/MessagePayload;->mString:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content_public/browser/MessagePayload;->mArrayBuffer:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "arrayBuffer cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mType:I

    iput-object p1, p0, Lorg/chromium/content_public/browser/MessagePayload;->mArrayBuffer:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content_public/browser/MessagePayload;->mString:Ljava/lang/String;

    return-void
.end method

.method private checkType(I)V
    .locals 3

    iget v0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/chromium/content_public/browser/MessagePayload;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but type is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mType:I

    invoke-static {p0}, Lorg/chromium/content_public/browser/MessagePayload;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "ArrayBuffer"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type: "

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "String"

    return-object p0

    :cond_2
    const-string p0, "Invalid"

    return-object p0
.end method


# virtual methods
.method public getAsArrayBuffer()[B
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content_public/browser/MessagePayload;->checkType(I)V

    iget-object v0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mArrayBuffer:[B

    const-string v1, "mArrayBuffer cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mArrayBuffer:[B

    return-object p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content_public/browser/MessagePayload;->checkType(I)V

    iget-object p0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mString:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/MessagePayload;->mType:I

    return p0
.end method
