.class public final LZ1/r;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LC1/m;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LC1/y;

.field public e:I


# direct methods
.method public constructor <init>(LC1/y;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LZ1/r;->d:LC1/y;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LZ1/r;->c:Ljava/lang/Object;

    iget p1, p0, LZ1/r;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/r;->e:I

    iget-object p1, p0, LZ1/r;->d:LC1/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, LC1/y;->e(LC1/m;Landroid/content/Context;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
