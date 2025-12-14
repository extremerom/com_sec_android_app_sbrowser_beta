.class Lorg/chromium/content_public/browser/WebContents$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents$InternalsHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content_public/browser/WebContents;->createDefaultInternalsHolder()Lorg/chromium/content_public/browser/WebContents$InternalsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mInternals:Lorg/chromium/content_public/browser/WebContentsInternals;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/chromium/content_public/browser/WebContentsInternals;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/WebContents$1;->mInternals:Lorg/chromium/content_public/browser/WebContentsInternals;

    return-object p0
.end method

.method public set(Lorg/chromium/content_public/browser/WebContentsInternals;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content_public/browser/WebContents$1;->mInternals:Lorg/chromium/content_public/browser/WebContentsInternals;

    return-void
.end method
