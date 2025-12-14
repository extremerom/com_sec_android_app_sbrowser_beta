.class public final Lorg/chromium/content_public/browser/SiteZoomInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation build Lorg/chromium/build/annotations/UsedByReflection;
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final zoomLevel:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/browser/SiteZoomInfo;->host:Ljava/lang/String;

    iput-wide p2, p0, Lorg/chromium/content_public/browser/SiteZoomInfo;->zoomLevel:D

    return-void
.end method
