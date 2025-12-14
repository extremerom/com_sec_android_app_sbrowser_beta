.class public final LW3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/u;
.implements LW3/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LW3/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public b(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public y(LW3/z;)LW3/t;
    .locals 1

    new-instance p1, LW3/b;

    iget-object v0, p0, LW3/f;->a:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LW3/b;-><init>(Landroid/content/Context;LW3/h;)V

    return-object p1
.end method
