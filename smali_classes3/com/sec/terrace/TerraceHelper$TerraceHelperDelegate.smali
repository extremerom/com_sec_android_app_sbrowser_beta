.class public interface abstract Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceHelperDelegate"
.end annotation


# virtual methods
.method public abstract calculateKeyboardHeight(Lcom/sec/terrace/TerraceActivity;)I
.end method

.method public abstract doesSupportSpen()Z
.end method

.method public abstract getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getPlatformOneUIVersion()I
.end method

.method public abstract getRefreshIconTopOffset(Z)I
.end method

.method public abstract isAiFeatureEnabledInKnoxEDM()Z
.end method

.method public abstract isBetaApk()Z
.end method

.method public abstract isChinaApk()Z
.end method

.method public abstract isHideStatusBarEnabled(Lcom/sec/terrace/TerraceActivity;)Z
.end method

.method public abstract isKeyboardTurnedOn(Lcom/sec/terrace/TerraceActivity;)Z
.end method

.method public abstract isParentalControlEnabled()Z
.end method

.method public abstract isPlatformAiFeaturesEnabled()Z
.end method

.method public abstract isRizeApk()Z
.end method

.method public abstract isSARTEnabled()Z
.end method

.method public isWearOs()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract performHapticFeedbackForDragStart(Landroid/view/View;)V
.end method

.method public abstract readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract showSelectionNotAllowedMessage(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V
.end method

.method public abstract startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z
.end method
