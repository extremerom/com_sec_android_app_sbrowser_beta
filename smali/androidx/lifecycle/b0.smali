.class public final Landroidx/lifecycle/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;


# static fields
.field public static final h:Landroidx/lifecycle/b0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/L;

.field public final g:LG6/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    sput-object v0, Landroidx/lifecycle/b0;->h:Landroidx/lifecycle/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/b0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/b0;->d:Z

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    new-instance v0, LG6/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/b0;->g:LG6/e;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/D;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    return-object p0
.end method
