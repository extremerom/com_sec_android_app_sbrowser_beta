.class Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContentsInternals;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebContentsInternalsImpl"
.end annotation


# instance fields
.field public final userDataHost:Lorg/chromium/base/UserDataHost;

.field public viewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/UserDataHost;

    invoke-direct {v0}, Lorg/chromium/base/UserDataHost;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;->userDataHost:Lorg/chromium/base/UserDataHost;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$WebContentsInternalsImpl;-><init>()V

    return-void
.end method
