.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragPosition"
.end annotation


# instance fields
.field private mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

.field private mPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->mPosition:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->mEditState:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$DragPosition;->mPosition:I

    return-void
.end method
