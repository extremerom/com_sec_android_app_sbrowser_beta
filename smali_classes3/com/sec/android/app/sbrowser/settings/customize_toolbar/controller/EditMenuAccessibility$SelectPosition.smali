.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectPosition"
.end annotation


# instance fields
.field private mEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

.field private mPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->mEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->mPosition:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->mEditor:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$EditMenuCustomAction;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility$SelectPosition;->mPosition:I

    return-void
.end method
