//
//  ViewController.m
//  BinaryTreeNode
//
//  Created by YueHui on 2017/12/27.
//  Copyright © 2017年 ArFree. All rights reserved.
//

#import "ViewController.h"

#import "BinaryTreeNode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *arr = [NSArray arrayWithObjects:@(7),@(6),@(3),@(2),@(1),@(9),@(10),@(12),@(14),@(4),@(14), nil];
    BinaryTreeNode *tree = [BinaryTreeNode new];
    tree = [BinaryTreeNode binaryTreeWithValues:arr];
    
    BinaryTreeNode *tree1 = [BinaryTreeNode treeNodeAtIndex:3 inTree:tree];
    NSLog(@"%@",tree1);
    
    NSMutableArray *orderArray = [NSMutableArray array];
    [BinaryTreeNode preOrderTraverseTree:tree handler:^(BinaryTreeNode *treeNode) {
        [orderArray addObject:@(treeNode.value)];
    }];
    NSLog(@"先序遍历结果：%@", [orderArray componentsJoinedByString:@","]);
    
    NSMutableArray *orderArray1 = [NSMutableArray array];
    [BinaryTreeNode inOrderTraverseTree:tree handler:^(BinaryTreeNode *treeNode) {
        
        [orderArray1 addObject:@(treeNode.value)];
        
    }];
    NSLog(@"中序遍历结果：%@", [orderArray1 componentsJoinedByString:@","]);
    
    
    NSMutableArray *orderArray2 = [NSMutableArray array];
    [BinaryTreeNode postOrderTraverseTree:tree handler:^(BinaryTreeNode *treeNode) {
        [orderArray2 addObject:@(treeNode.value)];
        
    }];
    NSLog(@"后序遍历结果：%@", [orderArray2 componentsJoinedByString:@","]);
    
    
    NSMutableArray *orderArray3 = [NSMutableArray array];
    [BinaryTreeNode levelTraverseTree:tree handler:^(BinaryTreeNode *treeNode) {
        [orderArray3 addObject:@(treeNode.value)];
        
    }];
    NSLog(@"层次遍历结果：%@", [orderArray3 componentsJoinedByString:@","]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
