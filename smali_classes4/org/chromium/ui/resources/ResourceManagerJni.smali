.class Lorg/chromium/ui/resources/ResourceManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/ResourceManager$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/ui/resources/ResourceManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/resources/ResourceManagerJni;

    invoke-direct {v0}, Lorg/chromium/ui/resources/ResourceManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onResourceReady(JLorg/chromium/ui/resources/ResourceManager;IILandroid/graphics/Bitmap;IIJ)V
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MM7E4tBk(JLjava/lang/Object;IILjava/lang/Object;IIJ)V

    return-void
.end method
