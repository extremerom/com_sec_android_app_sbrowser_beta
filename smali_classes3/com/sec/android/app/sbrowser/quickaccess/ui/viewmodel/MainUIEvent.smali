.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent$ID;
    }
.end annotation


# instance fields
.field private final mEventId:I

.field private final mParameter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->mEventId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->mParameter:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->mEventId:I

    return p0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->mParameter:Ljava/lang/Object;

    return-object p0
.end method
