.class Lorg/chromium/base/ContentUriUtilsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ContentUriUtils$Natives;


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

.method public static get()Lorg/chromium/base/ContentUriUtils$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/ContentUriUtilsJni;

    invoke-direct {v0}, Lorg/chromium/base/ContentUriUtilsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addFileInfoToVector(JLjava/lang/String;Ljava/lang/String;ZJJ)V
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->MiiPNW$z(JLjava/lang/Object;Ljava/lang/Object;ZJJ)V

    return-void
.end method
