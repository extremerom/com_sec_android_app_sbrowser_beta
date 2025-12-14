.class public final Lc2/r;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lc2/t;

.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lc2/t;

.field public e:I


# direct methods
.method public constructor <init>(Lc2/t;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lc2/r;->d:Lc2/t;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc2/r;->c:Ljava/lang/Object;

    iget p1, p0, Lc2/r;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/r;->e:I

    iget-object p1, p0, Lc2/r;->d:Lc2/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lc2/t;->b(Landroid/content/Context;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
