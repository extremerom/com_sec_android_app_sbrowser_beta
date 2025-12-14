.class public final LD4/a;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LD4/d;

.field public b:Lcom/google/android/appfunctions/AppFunctionMetadata;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LD4/d;

.field public e:I


# direct methods
.method public constructor <init>(LD4/d;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LD4/a;->d:LD4/d;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, LD4/a;->c:Ljava/lang/Object;

    iget p1, p0, LD4/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LD4/a;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, LD4/a;->d:LD4/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LD4/d;->d(LD4/d;Ly/b;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionMetadata;Lgb/f;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
