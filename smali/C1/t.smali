.class public final LC1/t;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LYc/a;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LC1/z;

.field public e:I


# direct methods
.method public constructor <init>(LC1/z;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/t;->d:LC1/z;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LC1/t;->c:Ljava/lang/Object;

    iget p1, p0, LC1/t;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LC1/t;->e:I

    iget-object p1, p0, LC1/t;->d:LC1/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LC1/z;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
