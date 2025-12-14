.class public final Landroidx/recyclerview/widget/C1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LM0/d;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/C0;

.field public c:Landroidx/recyclerview/widget/C0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM0/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LM0/d;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/C1;->d:LM0/d;

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/C1;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/C1;->d:LM0/d;

    invoke-virtual {v0}, LM0/d;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/C1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/C1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
