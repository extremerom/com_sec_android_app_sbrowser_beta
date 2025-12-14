.class public final LV/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/o;
.implements LW/i;


# instance fields
.field public final synthetic a:LW/a;

.field public final synthetic b:La0/E;


# direct methods
.method public constructor <init>(La0/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/t;->b:La0/E;

    new-instance v0, LW/a;

    invoke-direct {v0, p1}, LW/a;-><init>(La0/E;)V

    iput-object v0, p0, LV/t;->a:LW/a;

    return-void
.end method


# virtual methods
.method public final a(ILa0/m;I)V
    .locals 1

    check-cast p2, La0/q;

    const v0, -0xc23ba1d

    invoke-virtual {p2, v0}, La0/q;->R(I)V

    and-int/lit8 p3, p3, 0xe

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0, p1, p2, p3}, LW/a;->a(ILa0/m;I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0}, LW/a;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0, p1}, LW/a;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getContentType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0, p1}, LW/a;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, LV/t;->a:LW/a;

    invoke-virtual {p0}, LW/a;->getItemCount()I

    move-result p0

    return p0
.end method
