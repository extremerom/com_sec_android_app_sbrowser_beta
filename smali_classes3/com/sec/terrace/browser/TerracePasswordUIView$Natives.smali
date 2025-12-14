.class interface abstract Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/TerracePasswordUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract destroy(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method

.method public abstract getSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
.end method

.method public abstract getSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Ljava/lang/String;
.end method

.method public abstract handleRemoveSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V
.end method

.method public abstract handleRemoveSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V
.end method

.method public abstract init(Lcom/sec/terrace/browser/TerracePasswordUIView;)J
.end method

.method public abstract removePasswordExceptionForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method

.method public abstract removeSavedPasswordForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method

.method public abstract setPasswordExceptionListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method

.method public abstract setPasswordListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method

.method public abstract updatePasswordLists(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
.end method
