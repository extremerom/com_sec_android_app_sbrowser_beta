.class public final LXc/d;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LXc/e;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LXc/e;

.field public d:I


# direct methods
.method public constructor <init>(LXc/e;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LXc/d;->c:LXc/e;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LXc/d;->b:Ljava/lang/Object;

    iget p1, p0, LXc/d;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LXc/d;->d:I

    iget-object p1, p0, LXc/d;->c:LXc/e;

    invoke-virtual {p1, p0}, LXc/e;->d(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
