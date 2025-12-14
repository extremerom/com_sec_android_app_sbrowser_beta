.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->onNativeInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$4;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$4;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->u(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Ljava/lang/String;)V

    return-void
.end method
