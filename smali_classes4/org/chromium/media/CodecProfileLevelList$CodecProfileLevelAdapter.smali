.class Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/CodecProfileLevelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecProfileLevelAdapter"
.end annotation


# instance fields
.field private final mCodec:I

.field private final mLevel:I

.field private final mProfile:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mCodec:I

    iput p2, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mProfile:I

    iput p3, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mLevel:I

    return-void
.end method


# virtual methods
.method public getCodec()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mCodec:I

    return p0
.end method

.method public getLevel()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mLevel:I

    return p0
.end method

.method public getProfile()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/CodecProfileLevelList$CodecProfileLevelAdapter;->mProfile:I

    return p0
.end method
