.class public Lorg/chromium/ui/resources/ResourceFactoryJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/ResourceFactory$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/ui/resources/ResourceFactory$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/resources/ResourceFactoryJni;

    invoke-direct {v0}, Lorg/chromium/ui/resources/ResourceFactoryJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createBitmapResource()J
    .locals 2

    invoke-static {}, LJ/N;->MKzrMxwv()J

    move-result-wide v0

    return-wide v0
.end method

.method public createNinePatchBitmapResource(IIIIIIII)J
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MNZCYawX(IIIIIIII)J

    move-result-wide p0

    return-wide p0
.end method
