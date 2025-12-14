.class public final Loc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHc/b;


# static fields
.field public static final a:Loc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loc/a;->a:Loc/a;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, LMb/T;

    sget p0, Loc/d;->a:I

    invoke-virtual {p1}, LMb/T;->l()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    invoke-virtual {v0}, LMb/T;->X0()LMb/T;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
