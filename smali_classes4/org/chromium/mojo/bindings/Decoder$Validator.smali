.class final Lorg/chromium/mojo/bindings/Decoder$Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validator"
.end annotation


# instance fields
.field private final mMaxMemory:J

.field private mMinNextClaimedHandle:I

.field private mMinNextMemory:J

.field private final mNumberOfHandles:J

.field private mStackDepth:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    int-to-long p1, p3

    iput-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mNumberOfHandles:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mStackDepth:J

    return-void
.end method


# virtual methods
.method public claimHandle(I)V
    .locals 4

    iget v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    if-lt p1, v0, :cond_1

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mNumberOfHandles:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextClaimedHandle:I

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to access non present handle."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to access handle out of order."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public claimMemory(JJ)V
    .locals 4

    const-wide/16 v0, 0x8

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    cmp-long p1, p3, p1

    if-ltz p1, :cond_1

    iget-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMaxMemory:J

    cmp-long p1, p3, p1

    if-gtz p1, :cond_0

    invoke-static {p3, p4}, Lorg/chromium/mojo/bindings/BindingsHelper;->align(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mMinNextMemory:J

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to access out of range memory."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Incorrect memory range."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to access memory out of order."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Incorrect starting alignment: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decreaseStackDepth()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mStackDepth:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mStackDepth:J

    return-void
.end method

.method public increaseStackDepth()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mStackDepth:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/Decoder$Validator;->mStackDepth:J

    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Recursion depth limit exceeded."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
