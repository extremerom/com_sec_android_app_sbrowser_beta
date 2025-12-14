.class public interface abstract Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    return-void
.end method


# virtual methods
.method public onFinishCustomTab()V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionMenuIconClicked()V
    .locals 0

    return-void
.end method

.method public onRequestFocus()V
    .locals 0

    return-void
.end method

.method public onShareUrl()V
    .locals 0

    return-void
.end method

.method public onShowPageInfo()V
    .locals 0

    return-void
.end method

.method public onSwipeBottom()V
    .locals 0

    return-void
.end method
