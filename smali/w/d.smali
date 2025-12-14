.class public abstract Lw/d;
.super Lw/k;
.source "SourceFile"


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "yyyy-MM-dd\'T\'HH:mm"

    invoke-static {p1, p3}, LG5/h2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p1, p3}, LG5/h2;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "scheduledTime must be in the format: yyyy-MM-ddTHH:mm:ss"

    invoke-static {p2, p1}, LG6/a;->a(Ljava/lang/String;Z)V

    iput-object p3, p0, Lw/d;->m:Ljava/lang/String;

    return-void
.end method
