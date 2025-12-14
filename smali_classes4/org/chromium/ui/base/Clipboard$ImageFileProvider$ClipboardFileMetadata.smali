.class public Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/Clipboard$ImageFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipboardFileMetadata"
.end annotation


# static fields
.field public static final INVALID_TIMESTAMP:J


# instance fields
.field public final timestamp:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;->uri:Landroid/net/Uri;

    iput-wide p2, p0, Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;->timestamp:J

    return-void
.end method
