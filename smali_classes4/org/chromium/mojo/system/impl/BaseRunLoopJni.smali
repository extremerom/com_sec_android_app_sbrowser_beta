.class Lorg/chromium/mojo/system/impl/BaseRunLoopJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/impl/BaseRunLoop$Natives;


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

.method public static get()Lorg/chromium/mojo/system/impl/BaseRunLoop$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/mojo/system/impl/BaseRunLoopJni;

    invoke-direct {v0}, Lorg/chromium/mojo/system/impl/BaseRunLoopJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public deleteMessageLoop(Lorg/chromium/mojo/system/impl/BaseRunLoop;J)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEexSuCr(Ljava/lang/Object;J)V

    return-void
.end method
