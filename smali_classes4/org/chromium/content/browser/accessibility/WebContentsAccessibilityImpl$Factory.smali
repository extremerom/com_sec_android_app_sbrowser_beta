.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents$UserDataFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
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

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Factory;->create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
    .locals 0

    new-instance p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->createForDelegate(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method
