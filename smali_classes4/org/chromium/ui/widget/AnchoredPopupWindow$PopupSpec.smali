.class Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/AnchoredPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupSpec"
.end annotation


# instance fields
.field public final isPositionBelow:Z

.field public final isPositionToLeft:Z

.field public final popupRect:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;-><init>(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->popupRect:Landroid/graphics/Rect;

    iput-boolean p2, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionBelow:Z

    iput-boolean p3, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$PopupSpec;->isPositionToLeft:Z

    return-void
.end method
