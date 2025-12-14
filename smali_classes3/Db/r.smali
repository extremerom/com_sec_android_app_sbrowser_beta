.class public final LDb/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final a:LJb/d;

.field public final b:I


# direct methods
.method public constructor <init>(LJb/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/r;->a:LJb/d;

    iput p2, p0, LDb/r;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LDb/r;->a:LJb/d;

    invoke-interface {v0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    iget p0, p0, LDb/r;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/N;

    return-object p0
.end method
