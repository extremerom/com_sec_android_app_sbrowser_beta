.class public Landroidx/window/extensions/embedding/ActivityStack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_ACTIVITY_STACK_TOKEN:Landroid/os/IBinder;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsEmpty:Z

.field private final mToken:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroidx/window/extensions/embedding/ActivityStack;->INVALID_ACTIVITY_STACK_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroidx/window/extensions/embedding/ActivityStack;->INVALID_ACTIVITY_STACK_TOKEN:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/ActivityStack;-><init>(Ljava/util/List;ZLandroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLandroid/os/IBinder;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    iput-boolean p2, p0, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    iput-object p3, p0, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/ActivityStack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v1, p0, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    iget-object v3, p1, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    iget-boolean v3, p1, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mActivities:Ljava/util/List;

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/ActivityStack;->mIsEmpty:Z

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityStack;->mToken:Landroid/os/IBinder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityStack{mActivities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsEmpty="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mToken="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
