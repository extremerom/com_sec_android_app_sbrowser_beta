.class Lorg/chromium/content/browser/input/SelectPopupDropdown$3;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Landroid/view/View;Ljava/util/List;[IZLorg/chromium/content_public/browser/WebContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted(IIZ)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown$3;->this$0:Lorg/chromium/content/browser/input/SelectPopupDropdown;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->hide(Z)V

    return-void
.end method
