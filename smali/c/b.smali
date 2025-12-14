.class public interface abstract Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$ICustomTabsCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract X(Landroid/os/Bundle;)V
.end method

.method public abstract a0(Landroid/os/Bundle;)V
.end method

.method public abstract d0(IILandroid/os/Bundle;)V
.end method

.method public abstract g0(ILandroid/os/Bundle;)V
.end method

.method public abstract h(IIIIILandroid/os/Bundle;)V
.end method

.method public abstract m(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract o0(Landroid/os/Bundle;)V
.end method

.method public abstract onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract p0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end method

.method public abstract t(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract x(Landroid/os/Bundle;)V
.end method
