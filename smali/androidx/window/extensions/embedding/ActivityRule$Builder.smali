.class public final Landroidx/window/extensions/embedding/ActivityRule$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/ActivityRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysExpand:Z

.field private final mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;)V
    .locals 0
    .param p1    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/extensions/core/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Landroidx/window/extensions/core/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 2
    .param p1    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/window/extensions/embedding/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/window/extensions/embedding/a;-><init>(Ljava/util/function/Predicate;I)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroidx/window/extensions/embedding/a;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/window/extensions/embedding/a;-><init>(Ljava/util/function/Predicate;I)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/ActivityRule;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/window/extensions/embedding/ActivityRule;

    iget-object v1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mActivityPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-object v2, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mIntentPredicate:Landroidx/window/extensions/core/util/function/Predicate;

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mAlwaysExpand:Z

    iget-object p0, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/window/extensions/embedding/ActivityRule;-><init>(Landroidx/window/extensions/core/util/function/Predicate;Landroidx/window/extensions/core/util/function/Predicate;ZLjava/lang/String;)V

    return-object v0
.end method

.method public setShouldAlwaysExpand(Z)Landroidx/window/extensions/embedding/ActivityRule$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mAlwaysExpand:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityRule$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
