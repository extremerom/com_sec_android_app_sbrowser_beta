.class Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/services/data_decoder/JsonSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackChecker"
.end annotation


# instance fields
.field private mStackDepth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public decrease()V
    .locals 1

    iget v0, p0, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->mStackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->mStackDepth:I

    return-void
.end method

.method public increaseAndCheck()V
    .locals 1

    iget v0, p0, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->mStackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->mStackDepth:I

    const/16 p0, 0xc8

    if-ge v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Too much nesting"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
