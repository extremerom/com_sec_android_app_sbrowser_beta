.class public final LB0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ltb/m;

.field public final synthetic e:LB0/I;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lsb/k;LB0/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB0/H;->a:I

    iput p2, p0, LB0/H;->b:I

    iput-object p3, p0, LB0/H;->c:Ljava/util/Map;

    check-cast p4, Ltb/m;

    iput-object p4, p0, LB0/H;->d:Ltb/m;

    iput-object p5, p0, LB0/H;->e:LB0/I;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LB0/H;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LB0/H;->e:LB0/I;

    iget-object v0, v0, LB0/I;->h:Lz0/u;

    iget-object p0, p0, LB0/H;->d:Ltb/m;

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, LB0/H;->b:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, LB0/H;->a:I

    return p0
.end method
