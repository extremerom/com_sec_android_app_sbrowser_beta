.class public final Lm1/C;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lm1/G;

.field public e:I


# direct methods
.method public constructor <init>(Lm1/G;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lm1/C;->d:Lm1/G;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm1/C;->c:Ljava/lang/Object;

    iget p1, p0, Lm1/C;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm1/C;->e:I

    iget-object p1, p0, Lm1/C;->d:Lm1/G;

    invoke-virtual {p1, p0}, Lm1/G;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
