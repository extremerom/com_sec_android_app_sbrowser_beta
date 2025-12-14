.class Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/TextInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurroundingTextInternal"
.end annotation


# instance fields
.field public final mOffset:I

.field public final mSelectionEnd:I

.field public final mSelectionStart:I

.field public final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mSelectionStart:I

    iput p3, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mSelectionEnd:I

    iput p4, p0, Lorg/chromium/content/browser/input/TextInputState$SurroundingTextInternal;->mOffset:I

    return-void
.end method
