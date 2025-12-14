.class public Landroidx/window/extensions/embedding/SplitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_SPLIT_INFO_TOKEN:Landroid/os/IBinder;


# instance fields
.field private final mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroidx/window/extensions/embedding/SplitInfo;->INVALID_SPLIT_INFO_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/SplitAttributes;)V
    .locals 1
    .param p1    # Landroidx/window/extensions/embedding/ActivityStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/embedding/ActivityStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroidx/window/extensions/embedding/SplitInfo;->INVALID_SPLIT_INFO_TOKEN:Landroid/os/IBinder;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/window/extensions/embedding/SplitInfo;-><init>(Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/SplitAttributes;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/SplitAttributes;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/embedding/ActivityStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/embedding/ActivityStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iput-object p4, p0, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/extensions/embedding/SplitInfo;

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iget-object v3, p1, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {v1, v3}, Landroidx/window/extensions/embedding/SplitAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v3, p1, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v1, v3}, Landroidx/window/extensions/embedding/ActivityStack;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v3, p1, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v1, v3}, Landroidx/window/extensions/embedding/ActivityStack;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    return-object p0
.end method

.method public getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    return-object p0
.end method

.method public getSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    return-object p0
.end method

.method public getSplitRatio()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes;->getSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    move-result-object p0

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$RatioSplitType;->getRatio()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/ActivityStack;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitAttributes;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mToken:Landroid/os/IBinder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SplitInfo{mPrimaryActivityStack="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mSecondaryActivityStack="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mSplitAttributes="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mToken="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
