.class Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents$UserDataFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
        "Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;->create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
    .locals 0

    move-object p0, p1

    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentView;->isAllowedPackage(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->setAxAllowed(Z)V

    new-instance p0, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityDelegate;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityDelegate;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl;->createForDelegate(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method
