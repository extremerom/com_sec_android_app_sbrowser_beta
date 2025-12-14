.class public Lcom/sec/sbrowser/spl/wrapper/MajoListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPopupWindow(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 2

    const-class v0, Landroid/widget/ListPopupWindow;

    const-string v1, "mPopup"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/PopupWindow;

    return-object p0
.end method
